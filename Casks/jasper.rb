cask "jasper" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"

  on_intel do
    sha256 "06a8acb5ae64201651ab6ff12af8c435d36ee7ad26b9277a006d2b4f40f0ff85"
  end
  on_arm do
    sha256 "860a6d48cfc4542a0060746e10d2bfe06a3da66a0a3aeef028f02454afb3cd66"
  end

  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac_#{arch}.zip",
      verified: "github.com/jasperapp/jasper/"
  name "Jasper"
  desc "Issue reader for GitHub"
  homepage "https://jasperapp.io/"

  app "Jasper.app"

  zap trash: [
    "~/Library/Application Support/jasper",
    "~/Library/Containers/io.jasperapp",
  ]
end
