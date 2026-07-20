cask "finetune" do
  version "1.9.0"
  sha256 "2b8af93c0f1be1870d490ffe3e8a5ef2e17bc83bf48cfc5b4b83791861cdf22e"

  url "https://github.com/ronitsingh10/FineTune/releases/download/v#{version}/FineTune.dmg"
  name "FineTune"
  desc "Per-application volume mixer, equalizer, and audio router"
  homepage "https://github.com/ronitsingh10/FineTune"

  livecheck do
    url "https://raw.githubusercontent.com/ronitsingh10/FineTune/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "FineTune.app"

  zap trash: [
    "~/Library/Application Scripts/com.finetuneapp.FineTune",
    "~/Library/Containers/com.finetuneapp.FineTune",
  ]
end
