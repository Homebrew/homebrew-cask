cask "nozbe" do
  version "3.20.1"
  sha256 "1cf4461e172b66b486c24e1dbc6177559e921bf10e100b74262a165e44cee876"

  url "https://files2.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name "Nozbe"
  desc "Task manager"
  homepage "https://nozbe.com/"

  livecheck do
    url "https://help.nozbe.com/gtd/release-notes/"
    regex(%r{<h2.*id="newest".*?>Version\s+(\d+(?:\.\d+)+)</h2>}i)
  end

  depends_on macos: ">= :sierra"

  app "Mac (Developer ID) 2021-08-19 10-25-56/Nozbe.app"
end
