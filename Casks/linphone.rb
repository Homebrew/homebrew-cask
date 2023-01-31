cask "linphone" do
  version "5.0.9"
  sha256 "a4083d52c2ff06bb850977dfd752155b730c0ff476d39f0c6abd4104eede8d9d"

  url "https://download.linphone.org/releases/macosx/app/Linphone-#{version}-mac.dmg"
  name "Linphone"
  desc "Software for communication systems developers"
  homepage "https://www.linphone.org/"

  livecheck do
    url "https://download.linphone.org/releases/macosx/app/"
    regex(/Linphone[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  app "Linphone.app"
end
