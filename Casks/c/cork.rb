cask "cork" do
  version "1.4"
  sha256 :no_check

  url "https://corkmac.app/RLS/#{version}/Cork.zip"
  name "cork"
  desc "Ultimate Homebrew Companion"
  homepage "https://www.corkmac.app/"

  livecheck do
    url "https://corkmac.app/RLS/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on macos: ">= :ventura"

  app "Cork.app"

  zap trash: ""
end
