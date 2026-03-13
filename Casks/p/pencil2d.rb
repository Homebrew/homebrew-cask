cask "pencil2d" do
  on_arm do
    version "0.7.2"
    sha256 "e96b12cc18dc8895cf7259ee8e8d6853c8e8fd40a7b6bdb68f2514b6b096f4e0"

    url "https://github.com/pencil2d/pencil/releases/download/v#{version}/pencil2d-mac-v#{version}.dmg",
        verified: "github.com/pencil2d/pencil/"
  end
  on_intel do
    version "0.7.0"
    sha256 "2e0d6a2cce4577e0f0f673189658893ec2182e6a16d4332d98dde21c55899595"

    url "https://github.com/pencil2d/pencil/releases/download/v#{version}/pencil2d-mac-#{version}.zip",
        verified: "github.com/pencil2d/pencil/"

    livecheck do
      skip "Legacy version"
    end

    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  name "Pencil2D"
  name "Pencil2D Animation"
  desc "Open-source tool to make 2D hand-drawn animations"
  homepage "https://www.pencil2d.org/"

  app "Pencil2D.app"

  zap trash: [
    "~/Library/Application Support/Pencil2D",
    "~/Library/Preferences/com.pencil.Pencil.plist",
    "~/Library/Saved Application State/com.pencil2d.Pencil2D.savedState",
  ]
end
