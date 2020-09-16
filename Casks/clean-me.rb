cask "clean-me" do
  if MacOS.version <= :mojave
    version "1.4.1"
    sha256 "a074546909de68b0b378b58f6804a118f40a03077083a5a61a19c588f0841648"
  else
    version "1.4.2"
    sha256 "f58124740e8d9cbf8b4f45ee9a3e30a2aced109381fc34583d1c28d49d54dfe5"
  end

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  appcast "https://github.com/Kevin-De-Koninck/Clean-Me/releases.atom"
  name "Clean-me"
  desc "System cleaner for logs, caches and more"
  homepage "https://github.com/Kevin-De-Koninck/Clean-Me"

  depends_on macos: ">= :sierra"

  app "Clean Me.app"
end
