cask "pycharm-with-anaconda-plugin" do
  version "2020.1.4"
  sha256 "286145f61b74bcaf3d0ee33821a808efac5cb5550439c2abf29b4b4f383fa301"

  url "https://download.jetbrains.com/python/pycharm-professional-anaconda-#{version}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release"
  name "Jetbrains PyCharm with Anaconda plugin"
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
