cask "espresso" do
  version "5.6.1"
  sha256 "f9f044493de83b0d4aebe3ecc9f3b28322563434fbb474739417540728c09bca"

  url "https://downloads.kangacode.com/Espresso/Espresso_#{version}.zip",
      verified: "downloads.kangacode.com/"
  name "Espresso"
  desc "Website editor focusing on flair and efficiency"
  homepage "https://espressoapp.com/"

  livecheck do
    url "https://espressoapp.com/updates/"
    strategy :page_match
    regex(/data-title="(\d+(?:\.\d+)*)"/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Espresso.app"
end
