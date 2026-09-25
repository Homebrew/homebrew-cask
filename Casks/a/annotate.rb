cask "annotate" do
  version "1.7.0"
  sha256 "75457ed0545b407fff0e66bf62867a947307d64996a96bacbdec32fb9459b191"

  url "https://github.com/epilande/Annotate/releases/download/v#{version}/Annotate-#{version}.dmg"
  name "Annotate"
  desc "Keyboard-driven screen annotation tool"
  homepage "https://github.com/epilande/Annotate/"

  auto_updates true
  depends_on macos: :sonoma

  app "Annotate.app"

  zap trash: "~/Library/Containers/com.epilande.Annotate"
end
