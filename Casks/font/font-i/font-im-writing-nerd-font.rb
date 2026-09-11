cask "font-im-writing-nerd-font" do
  version "3.5.1"
  sha256 "c6df9758b24f50eed8edbd17df72b93dd68a55b87d4791f7e777b95b52848afa"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/iA-Writer.tar.xz"
  name "IMWriting Nerd Font families (iA Writer)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

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
