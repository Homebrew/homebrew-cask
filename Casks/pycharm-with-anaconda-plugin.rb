cask "pycharm-with-anaconda-plugin" do
  version "2020.3,203.5981.165"
  sha256 "d52d7de4d81f6e9845a2521f8e999fddbaddde22df59a6be8dca9c11283bfb98"

  url "https://download.jetbrains.com/python/pycharm-professional-anaconda-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release"
  name "Jetbrains PyCharm with Anaconda plugin"
  desc "PyCharm IDE with Anaconda plugin"
  homepage "https://www.jetbrains.com/pycharm/promo/anaconda"

  auto_updates true

  app "PyCharm with Anaconda plugin .app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "charm") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/PyCharm*",
    "~/Library/Saved Application State/com.jetbrains.pycharm.savedState",
  ]
end
