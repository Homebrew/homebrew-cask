cask "annotate" do
  version "1.6.0"
  sha256 "50136d9f53abf1f9e4b78db0c4d072d3e632cd7fdf90baf820560537272b35b6"

  url "https://github.com/epilande/Annotate/releases/download/v#{version}/Annotate-#{version}.dmg"
  name "Annotate"
  desc "Keyboard-driven screen annotation tool"
  homepage "https://github.com/epilande/Annotate/"

  auto_updates true
  depends_on macos: :sonoma

  app "Annotate.app"

  zap trash: "~/Library/Containers/com.epilande.Annotate"
end
