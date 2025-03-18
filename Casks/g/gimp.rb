cask "gimp" do
  arch arm: "arm64", intel: "x86_64"

  on_catalina :or_older do
    version "2.10.38,1"
    sha256 arm:   "dc1aa78a40695f9f4580ce710960ff411eeef48af45b659b03b51e4cd6cdf4e8",
           intel: "d2d3ac20c762fe12f0dd0ec8d7c6c2f1f3a43e046ecb4ed815a49afcbaa92b92"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.0.0"
    sha256 arm:   "01226a0325d94066f6b1a1a73d54425eceaeadd2d0525504b8f559d4068cbf24",
           intel: "e1f8350b48f777ac3a1bf5c31894bd69dd0f8ef98fc430c40e7e272765722e56"

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
  end

  url "https://download.gimp.org/gimp/v#{version.major_minor}/macos/gimp-#{version}-#{arch}#{version.csv.second ? "-" + version.csv.second : ""}.dmg"
  name "GIMP"
  name "GNU Image Manipulation Program"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

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
