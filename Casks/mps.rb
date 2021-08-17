cask "mps" do
  version "2021.1.2,211.7628.1389"

  if Hardware::CPU.intel?
    sha256 "9cc2cbf21441765319adc2aabe27202085b3b6a84c2d8503efa6c72bf03eef1b"

    url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.before_comma}-macos.dmg"
  else
    sha256 "998d50c719242407deec3923b7a49e1b26c3a8be68629527a155857d6261be77"

    url "https://download.jetbrains.com/mps/#{version.major_minor}/MPS-#{version.before_comma}-macos-aarch64.dmg"
  end

  name "JetBrains MPS"
  desc "Create your own domain-specific language"
  homepage "https://www.jetbrains.com/mps/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["MPS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "MPS #{version.major_minor}.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "mps") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/MPSSamples.#{version.before_comma.major_minor}",
    "~/Library/Application Support/MPS#{version.before_comma.major_minor}",
    "~/Library/Caches/MPS#{version.before_comma.major_minor}",
    "~/Library/Logs/MPS#{version.before_comma.major_minor}",
    "~/Library/Preferences/MPS#{version.before_comma.major_minor}",
  ]
end
