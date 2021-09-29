cask "lagrange" do
  version "1.7.0,1"

  if Hardware::CPU.intel?
    sha256 "7f0891fa145703409157835c9b0379971f7c49de1ea745b6270da9d66b4d6eab"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version.before_comma}/lagrange_v#{version.before_comma}-#{version.after_comma}_macos10.13-x86_64.tbz",
        verified: "github.com/skyjake/lagrange/"
  else
    sha256 "f47559f5563db44c4020ff0f6e7fc48056a1ac3c1d503d028f87b30ab2143b7c"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version.before_comma}/lagrange_v#{version.before_comma}_macos11.0-arm64.tbz",
        verified: "github.com/skyjake/lagrange/"
  end

  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  depends_on macos: ">= :high_sierra"

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end
