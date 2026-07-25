cask "annotate" do
  version "1.4.2"
  sha256 "0129ed382fc5dba3be3d5dd87982eee79b7bfcfb04c1ddb25d0f90363f47a1ec"

  url "https://github.com/epilande/Annotate/releases/download/v#{version}/Annotate-#{version}.dmg"
  name "Annotate"
  desc "Keyboard-driven screen annotation tool"
  homepage "https://github.com/epilande/Annotate/"

  auto_updates true
  depends_on macos: :sonoma

  app "Annotate.app"

  zap trash: "~/Library/Containers/com.epilande.Annotate"
end
