cask "pearcleaner" do
  version "3.8.3"
  sha256 "c7767d20fdb5ca544a061f1936ae9202922d25069eba85e83cdf770aaa838f2b"

  url "https://github.com/alienator88/Pearcleaner/releases/download/#{version}/Pearcleaner.zip",
      verified: "github.com/alienator88/Pearcleaner/"
  name "Pearcleaner"
  desc "Utility to uninstall apps and remove leftover files from old/uninstalled apps"
  homepage "https://itsalin.com/appInfo/?id=pearcleaner"

  depends_on macos: ">= :ventura"

  app "Pearcleaner.app"

  uninstall launchctl: "com.alienator88.PearcleanerSentinel",
            quit:      "com.alienator88.Pearcleaner"

  zap trash: "~/Library/Application Support/Pearcleaner"
end
