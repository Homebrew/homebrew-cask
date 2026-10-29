cask "annotate" do
  version "1.8.0"
  sha256 "0c04c0f66a3c03cdff386ebc19f8c1009836352cc2ffab9e06b7b93965b054b3"

  url "https://github.com/epilande/Annotate/releases/download/v#{version}/Annotate-#{version}.dmg"
  name "Annotate"
  desc "Keyboard-driven screen annotation tool"
  homepage "https://github.com/epilande/Annotate/"

  auto_updates true
  depends_on macos: :sonoma

  app "Annotate.app"

  zap trash: "~/Library/Containers/com.epilande.Annotate"
end
