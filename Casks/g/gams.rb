cask "gams" do
  arch arm: "_arm64"

  version "53.3.0"
  sha256 arm:   "de67bd17f6d87d3f082bacc5f2e80bb899a32dfd0b237712850198ddc4fca257",
         intel: "6e87f9b840cdb4666487bdd06360a6227d966ca53d9e9b68a14ee17213e8a055"

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
