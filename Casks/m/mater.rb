cask "mater" do
  on_arm do
    version "2.0.3"
    sha256 "3475eac057163616e5f2ad7d91ff02faeca9bfd267bfc963e78ca284212a20f3"

    url "https://github.com/jasonlong/mater/releases/download/v#{version}/Mater-#{version}-arm64.dmg"

    depends_on macos: ">= :monterey"

    app "Mater.app"
  end
  on_intel do
    version "1.0.10"
    sha256 "613dba1cd8ca8dee74b30a456d3d2cb87896020b5305d6ff25f5f324499c4ee7"

    url "https://github.com/jasonlong/mater/releases/download/#{version}/Mater-darwin-x64.zip"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :catalina"

    app "Mater-darwin-x64/Mater.app"
  end

  name "Mater"
  desc "Menubar pomodoro app"
  homepage "https://github.com/jasonlong/mater"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  zap trash: [
    "~/Library/Application Support/mater",
    "~/Library/Preferences/com.electron.mater.plist",
    "~/Library/Saved Application State/com.electron.mater.savedState",
  ]
end
