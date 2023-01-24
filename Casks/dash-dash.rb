cask "dash-dash" do
  version "18.2.1"
  sha256 "b1c8f75aab3a748c21fb946019e21a27dc40370fccf0e0eca5ee39e4ab2622b9"

  url "https://github.com/dashpay/dash/releases/download/v#{version}/dashcore-#{version}-osx.dmg",
      verified: "github.com/dashpay/dash/"
  name "Dash"
  desc "Dash - Reinventing Cryptocurrency"
  homepage "https://www.dash.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dash-Qt.app"

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", "0755"
  end
end
