cask "containermanager" do
  version "1.0.5"
  sha256 "7badbde6959a9a23faa28a67bdc281bc65c12bacdd54b5d6592c63516275af99"

  url "https://github.com/bartreardon/ContainerManager-App/releases/download/v#{version}/ContainerManager.dmg"
  name "ContainerManager"
  desc "App for managing Apple's container tool without dropping to a terminal."
  homepage "https://github.com/bartreardon/ContainerManager-App"

  depends_on macos: :tahoe
  
  app "ContainerManager.app"

  zap trash: [
       "~/Library/Caches/com.apple.containermanagerd",
       "~/Library/ContainerManager",
     ]
end
