cask "gams" do
  arch arm: "_arm64"

  version "54.4.0"
  sha256 arm:   "415bf0ed4728f8861a2b0fdfccf2fd8a93fcd195a5514016ad8bfcd490913323",
         intel: "ba54ff6c382a6ad7ff4abc07b7b7081a057d4811e53e9f1ca763672e4dae7933"

  url "https://d37drm4t2jghv5.cloudfront.net/distributions/#{version}/macosx#{arch}/GAMS#{version}.pkg"
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
