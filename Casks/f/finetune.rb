cask "finetune" do
  version "1.8.0"
  sha256 "ae9e8f36be92aa2caff0aba755feb7127219c24825a7f48027e3d74378f4a41f"

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
