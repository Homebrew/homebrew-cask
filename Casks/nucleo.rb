cask "nucleo" do
  version "3.0.4"
  sha256 "02c1f5356a2d623b682f19e15a9f6e29fa6497a7e24def4a56d6de0a55f4b164"

  url "https://nucleo-app-releases.s3.amazonaws.com/mac/Nucleo_#{version}.zip",
      verified: "nucleo-app-releases.s3.amazonaws.com/"
  name "Nucleo"
  desc "Icon manager and library"
  homepage "https://nucleoapp.com/"

  livecheck do
    url "https://nucleoapp.com/updates"
    strategy :page_match
    regex(%r{href=.*?/Nucleo_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Nucleo.app"
end
