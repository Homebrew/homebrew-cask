cask "fleet" do
  arch arm: "-aarch64"

  version "2022.2.3,222.4345.15"
  sha256 arm:   "0dee8fe654cccdafa73b65da1a2ef844401a9438ecee726fe6f6af1f09d07c38",
         intel: "8dbe5cd8e31c7f6bc6795db6946e2430c82f0aa2c13e7805c40733428b02241d"

  url "https://download.jetbrains.com/webide/PhpStorm-#{version.csv.first}#{arch}.dmg"
  name "JetBrains Fleet"
  desc "Next-generation IDE by JetBrains"
  homepage "https://www.jetbrains.com/fleet/"

  livecheck do
    url "https://data.services.jetbrains.com/products?code=FL&release.type=eap%2Crc%2Crelease"
    strategy :page_match do |page|
      JSON.parse(page)["FL"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Fleet.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "pstorm") }.each do |path|
      if File.readable?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/PhpStorm#{version.major_minor}",
    "~/Library/Caches/PhpStorm#{version.major_minor}",
    "~/Library/Logs/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/jetbrains.phpstorm.*.plist",
    "~/Library/Preferences/PhpStorm#{version.major_minor}",
  ]
end
