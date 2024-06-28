cask "pia" do
  version "3.0.3"
  sha256 "696dafca5d4a4472eca0c1ded044a3ef3448d767e0a8a65c239ec5c415187964"

  url "https://github.com/LINCnil/pia/releases/download/v#{version}/pia-#{version}.dmg"
  name "pia"
  desc "Privacy Impact Assessment Tool"
  homepage "https://github.com/LINCnil/pia"

  livecheck do
    url :url
    strategy :github_latest
  end
  
  depends_on macos: ">= :high_sierra"

  app "pia.app"

  zap trash: "~/Library/Application Support/pia"

  caveats do
    requires_rosetta
  end
  
end
