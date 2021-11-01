cask "espresso" do
  version "5.7.1"
  sha256 "92214d8c3f1d9925719cb47d86c1404a345da7376096a88a42dc2ca7a4a4f204"

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
