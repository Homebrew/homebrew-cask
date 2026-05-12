cask "impactor" do
  version "2.4.0"
  sha256 "440b991292e9ac8630cfae3234baf3a42a02ba27510fc13d9f03c3cac6b4d84e"

  url "https://github.com/khcrysalis/Impactor/releases/download/v#{version}/Impactor-macos-universal.dmg"
  name "Impactor"
  desc "Sideloading application for iOS/tvOS"
  homepage "https://github.com/khcrysalis/Impactor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Impactor.app"

  zap trash: "~/.config/PlumeImpactor"
end
