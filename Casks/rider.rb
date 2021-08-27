cask "rider" do
  version "2021.2,212.4746.113"

  if Hardware::CPU.intel?
    sha256 "307a56fbe0748f652cb1ff03c4cc636d9656778681c2b67b02080cad277d7adc"

    url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.before_comma}.dmg"
  else
    sha256 "ee6a0c3265af79fec9f17ab995d335ddee470148d09df57f69e6bebf8a7892f9"

    url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.before_comma}-aarch64.dmg"
  end

  name "JetBrains Rider"
  desc ".NET IDE"
  homepage "https://www.jetbrains.com/rider/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["RD"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Rider.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "rider") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/Rider#{version.major_minor}",
    "~/Library/Caches/Rider#{version.major_minor}",
    "~/Library/Logs/Rider#{version.major_minor}",
    "~/Library/Preferences/Rider#{version.major_minor}",
    "~/Library/Preferences/jetbrains.rider.71e559ef.plist",
    "~/Library/Saved Application State/com.jetbrains.rider.savedState",
  ]
end
