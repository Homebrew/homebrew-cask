cask "texmaker" do

  if Hardware::CPU.intel?
    version "5.1.4"
    sha256 "4fb2896712f3aee93c0aae8f940dafab66c04334a76e055e1366adb21550f1fe"
    url "https://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg" 

  elsif Hardware::CPU.arm?
    version "6.0.0"
    sha256 "8b67e6248a5e55c03790cb4854cc2c475bd35d29ae1a5526ee33956b9b1832df"
    url "https://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"

  end
  
  livecheck do
    skip "No version information available" 
  end
  name "Texmaker"
  desc "LaTeX editor"
  homepage "https://www.xm1math.net/texmaker/"



  app "texmaker.app"

  zap trash: [
    "~/Library/Preferences/texmaker.plist",
    "~/Library/Saved Application State/texmaker.savedState",
  ]
end
