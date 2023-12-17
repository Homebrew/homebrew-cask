cask "pycharm-with-anaconda-plugin" do
  version "2020.3.2,203.6682.179"
  sha256 "61637593237424a9bb7b44408ab3631a8e2458b58c68b5060fea9b218a10256f"

  url "https://download.jetbrains.com/python/pycharm-professional-anaconda-#{version.csv.first}.dmg"
  name "Jetbrains PyCharm with Anaconda plugin"
  desc "PyCharm IDE with Anaconda plugin"
  homepage "https://www.jetbrains.com/pycharm/promo/anaconda"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true

  app "PyCharm with Anaconda plugin .app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "charm") }.each do |path|
      if File.readable?(path) &&
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
