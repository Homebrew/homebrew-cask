cask "pycharm-with-anaconda-plugin" do
  version "2020.2.1"
  sha256 "8bceb33c061a333d8d5f51bfadb3c8d7c2f6e0a19a0091ab5bd0bb7fed3763b1"

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
