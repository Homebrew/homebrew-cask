cask "gams" do
  arch arm: "_arm64"

  version "53.1.0"
  sha256 arm:   "bd43c054059492a57a87722b1a112582fb64036e51ca537cf6ba6f8909fb1789",
         intel: "77266a7bbbd1f300173db95a1c8d3d39d2cc845ea3d03a0e396fb2723aa9fae1"

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
