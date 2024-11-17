cask "gimp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.10.38,1"
  sha256 arm:   "dc1aa78a40695f9f4580ce710960ff411eeef48af45b659b03b51e4cd6cdf4e8",
         intel: "d2d3ac20c762fe12f0dd0ec8d7c6c2f1f3a43e046ecb4ed815a49afcbaa92b92"

  url "https://download.gimp.org/gimp/v#{version.major_minor}/macos/gimp-#{version.csv.first}-#{arch}#{version.csv.second ? "-" + version.csv.second : ""}.dmg"
  name "GIMP"
  name "GNU Image Manipulation Program"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/"
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}(?:-(\d+))?\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        next match[0] unless match[1]

        "#{match[0]},#{match[1]}"
      end
    end
  end

  conflicts_with cask: "gimp@dev"
  depends_on macos: ">= :high_sierra"

  app "GIMP.app"
  shimscript = "#{staged_path}/gimp.wrapper.sh"
  binary shimscript, target: "gimp"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      "#{appdir}/GIMP.app/Contents/MacOS/gimp" "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Gimp",
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}.plist",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}.savedState",
  ]
end
