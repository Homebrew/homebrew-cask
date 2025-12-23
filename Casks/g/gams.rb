cask "gams" do
  arch arm: "_arm64"

  version "52.3.0"
  sha256 arm:   "2a26a4612c5b590212049a9f8f6a23c84b3ec07447574e51c9bce06319d3686e",
         intel: "36802a9a3a72b1ad8e0af37fe744a9ee9bf367ce5f621e9d8f49b0ebd9118b94"

  url "https://d37drm4t2jghv5.cloudfront.net/distributions/#{version}/macosx#{arch}/GAMS#{version}.pkg",
      verified: "d37drm4t2jghv5.cloudfront.net/"
  name "GAMS"
  desc "General Algebraic Modeling System"
  homepage "https://www.gams.com/"

  livecheck do
    url "https://www.gams.com/download/"
    regex(/GAMS\s*Release\s*v?(\d+(?:\.\d+)+)[ <"]/i)
  end

  pkg "GAMS#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "GAMS",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "GAMS-Studio",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "GAMS-Shell-Profile-Updater",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall script: {
    executable: "/Library/Frameworks/GAMS.framework/Resources/uninstall.sh",
    input:	     "y",
    sudo:       true,
  }

  # No zap stanza required

  caveats do
    license "https://gams.com/GAMS_EULA.pdf"
    path_environment_variable "/Library/Frameworks/GAMS.framework/Resources"
  end
end
