cask "font-im-writing-nerd-font" do
  version "3.3.0"
  sha256 "e1005ad388cf4125b62ab52cf22465b8ba22bc7e5805c0d287401cc9a0ec45a1"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/iA-Writer.zip"
  name "IMWriting Nerd Font families (iA Writer)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "iMWritingDuoNerdFont-Bold.ttf"
  font "iMWritingDuoNerdFont-BoldItalic.ttf"
  font "iMWritingDuoNerdFont-Italic.ttf"
  font "iMWritingDuoNerdFont-Regular.ttf"
  font "iMWritingDuoNerdFontPropo-Bold.ttf"
  font "iMWritingDuoNerdFontPropo-BoldItalic.ttf"
  font "iMWritingDuoNerdFontPropo-Italic.ttf"
  font "iMWritingDuoNerdFontPropo-Regular.ttf"
  font "iMWritingMonoNerdFont-Bold.ttf"
  font "iMWritingMonoNerdFont-BoldItalic.ttf"
  font "iMWritingMonoNerdFont-Italic.ttf"
  font "iMWritingMonoNerdFont-Regular.ttf"
  font "iMWritingMonoNerdFontMono-Bold.ttf"
  font "iMWritingMonoNerdFontMono-BoldItalic.ttf"
  font "iMWritingMonoNerdFontMono-Italic.ttf"
  font "iMWritingMonoNerdFontMono-Regular.ttf"
  font "iMWritingMonoNerdFontPropo-Bold.ttf"
  font "iMWritingMonoNerdFontPropo-BoldItalic.ttf"
  font "iMWritingMonoNerdFontPropo-Italic.ttf"
  font "iMWritingMonoNerdFontPropo-Regular.ttf"
  font "iMWritingQuatNerdFont-Bold.ttf"
  font "iMWritingQuatNerdFont-BoldItalic.ttf"
  font "iMWritingQuatNerdFont-Italic.ttf"
  font "iMWritingQuatNerdFont-Regular.ttf"
  font "iMWritingQuatNerdFontPropo-Bold.ttf"
  font "iMWritingQuatNerdFontPropo-BoldItalic.ttf"
  font "iMWritingQuatNerdFontPropo-Italic.ttf"
  font "iMWritingQuatNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
