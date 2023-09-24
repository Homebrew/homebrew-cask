cask "chirp" do
  version "20230924"
  sha256 "65644f9a8ae75fe14a9c4d5efff1456d1c3737f294312b3e0c09ebd352890241"

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
