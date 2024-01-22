cask "chirp" do
  version "20240122"
  sha256 "01266c71cbfd39dc3a27e8fe005d70b53710f769cc71028d0f0df9562754e85e"

  url "https://trac.chirp.danplanet.com/chirp_next/next-#{version}/chirp-next-#{version}.app.zip"
  name "CHIRP"
  desc "Tool for programming amateur radio"
  homepage "https://chirp.danplanet.com/projects/chirp/wiki/Home"

  livecheck do
    url "https://trac.chirp.danplanet.com/chirp_next/"
    regex(/next[._-]v?(\d+(?:\.\d+)*)/i)
  end

  app "CHIRP.app"

  zap trash: "~/.chirp"
end
