cask "starsector" do
  version "0.95a-RC12"
  sha256 "af375ac7bb221d4ec4cb17a0128ffa7a3f4a9768fbd6db4d9a2004c2fd313c4f"

  url "https://s3.amazonaws.com/fractalsoftworks/starsector/starsector_mac-#{version}.zip",
      verified: "s3.amazonaws.com/fractalsoftworks/"
  name "Starsector"
  desc "Open-world single-player space combat and trading RPG"
  homepage "https://fractalsoftworks.com/"

  livecheck do
    url "https://fractalsoftworks.com/preorder/"
    strategy :page_match
    regex(%r{href=.*?/starsector_mac-(\d+(?:\.\d+)*a-RC\d+)\.zip}i)
  end

  app "Starsector.app"
end
