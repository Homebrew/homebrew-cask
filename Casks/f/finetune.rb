cask "finetune" do
  version "1.3.1"
  sha256 "4eba60404b2bd3e82ecd6773a657cebc20105f855ac19f6681e54d05e2fc2227"

  url "https://github.com/ronitsingh10/FineTune/releases/download/v#{version}/FineTune-#{version}.dmg"
  name "FineTune"
  desc "Per-application volume mixer, equalizer, and audio router"
  homepage "https://github.com/ronitsingh10/FineTune"

  livecheck do
    url "https://raw.githubusercontent.com/ronitsingh10/FineTune/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "FineTune.app"

  zap trash: [
    "~/Library/Application Scripts/com.finetuneapp.FineTune",
    "~/Library/Containers/com.finetuneapp.FineTune",
  ]
end
