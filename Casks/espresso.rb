cask "espresso" do
  version "5.3.2"
  sha256 "ce23df1e9c4874805f91c838d0f8d0d368c6acbc09e3b20af0f3f8d62c4a4083"

  url "https://downloads.kangacode.com/Espresso/Espresso_#{version}.zip",
      verified: "downloads.kangacode.com/"
  name "Espresso"
  desc "Website editor focusing on flair and efficiency"
  homepage "https://espressoapp.com/"

  livecheck do
    url "https://espressoapp.com/updates/"
    strategy :page_match
    regex(%r{href=.*?/Espresso_(\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :sierra"

  app "Espresso.app"
end
