cask "jmc" do
  version "0.3-beta"
  sha256 "b6e9303815d80948b80e1f94d797e1ee4ce1017940b236284930abc583ce6e41"

  url "https://github.com/jcm93/jmc/releases/download/v#{version}/jmc.app.zip"
  name "jmc"
  desc "Media organiser"
  homepage "https://github.com/jcm93/jmc"

  # This regex should be removed or tightened (/^v?(\d+(?:\.\d+)+)$/i) when
  # upstream starts publishing stable versions. Until then, it has to be loose
  # enough to match unstable versions like `0.2-beta.6`, etc.).
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+.+)$/i)
    strategy :github_latest
  end

  app "jmc.app"
end
