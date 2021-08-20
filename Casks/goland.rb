cask "goland" do
  version "2021.2.1,212.5080.40"

  if Hardware::CPU.intel?
    sha256 "c90c87203c9996f7b536b4e940a4bfa1dcf6f21c632e1b7e59b6d637062d3105"

    url "https://download.jetbrains.com/go/goland-#{version.before_comma}.dmg"
  else
    sha256 "eb17d0a482b252d46c34f711bcb26d52fba1a3f631a4e5ffe1227be1edf821dc"

    url "https://download.jetbrains.com/go/goland-#{version.before_comma}-aarch64.dmg"
  end

  name "Goland"
  desc "Go (golang) IDE"
  homepage "https://www.jetbrains.com/go/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["GO"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "GoLand.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "goland") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/GoLand",
    "~/Library/Application Support/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Caches/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Logs/JetBrains/GoLand#{version.major_minor}",
    "~/Library/Preferences/GoLand#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.goland.plist",
    "~/Library/Saved Application State/com.jetbrains.goland.SavedState",
  ]
end
