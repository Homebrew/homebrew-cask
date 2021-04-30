cask "kextviewr" do
  version "1.1.0"
  sha256 "bf57dc55adc7179914a452eeacf553952e86b4e1ff2406875a9a0b21932684ca"

  url "https://bitbucket.org/objective-see/deploy/downloads/KextViewr_#{version}.zip",
      verified: "bitbucket.org/objective-see/"
  appcast "https://objective-see.com/products/changelogs/KextViewr.txt"
  name "KextViewr"
  desc "Display all currently loaded kexts"
  homepage "https://objective-see.com/products/kextviewr.html"

  app "KextViewr.app"

  zap trash: "~/Library/Caches/com.objective-see.KextViewr"
end
