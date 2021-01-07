cask "kekaexternalhelper" do
  version "1.2.6,1.1.0"
  sha256 "4e232df4d93ee4bff300feb91bf62f5c18880355f3c79dbe43b3e3f710461d21"

  url "https://github.com/aonez/Keka/releases/download/v#{version.before_comma}/KekaExternalHelper-v#{version.after_comma}.zip"
  appcast "https://github.com/aonez/Keka/releases.atom"
  name "Keka External Helper"
  desc "Helper application for the Keka file archiver"
  homepage "https://github.com/aonez/Keka/wiki/Default-application"

  app "KekaExternalHelper.app"
end
