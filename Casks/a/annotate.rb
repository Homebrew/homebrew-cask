cask "annotate" do
  version "1.3.1"
  sha256 "3a4ea15463c541eaa93faacfa6ba72e8009bd247acc8d670f30b4f3d997bc70d"

  url "https://github.com/epilande/Annotate/releases/download/v#{version}/Annotate-#{version}.dmg"
  name "Annotate"
  desc "Keyboard-driven screen annotation tool"
  homepage "https://github.com/epilande/Annotate/"

  auto_updates true
  depends_on macos: :sonoma

  app "Annotate.app"

  zap trash: "~/Library/Containers/com.epilande.Annotate"
end
