cask "gams" do
  arch arm: "_arm64"

  version "54.1.0"
  sha256 arm:   "9fe2ed1e569d47a1c4952c7ca5997f73b28f3ec4810b0e3f5361e821e05157b7",
         intel: "d915d45df16312f66b28b7641ff162a2924b4764ccb80b3dcdcd20263eec2a17"

  url "https://d37drm4t2jghv5.cloudfront.net/distributions/#{version}/macosx#{arch}/GAMS#{version}.pkg",
      verified: "d37drm4t2jghv5.cloudfront.net/"
  name "GAMS"
  desc "General Algebraic Modeling System"
  homepage "https://www.gams.com/"

  livecheck do
    url "https://www.gams.com/download/"
    regex(/GAMS\s*Release\s*v?(\d+(?:\.\d+)+)[ <"]/i)
  end

  depends_on :macos

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
