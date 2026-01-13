cask "kogiqa" do
  version "0.4.926"
  sha256 "5367aba32f70836070afa2e2d29bed591c8fc94d9c80b13736d79914fda8c436"

  url "https://updater.kogiqa.com/release/kogi-qa-#{version}-universal.dmg"
  name "kogiQA"
  desc "UI automation tool using natural language descriptions"
  homepage "https://kogiQA.com/"

  livecheck do
    url "https://updater.kogiqa.com/release/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "kogiQA.app"

  # Verify the app is signed by the atagon GmbH team id
  postflight do
    system_command "/usr/bin/codesign",
                   args:         [
                     "--verify",
                     "--verbose",
                     "--requirements",
                     '=anchor apple generic and certificate leaf[subject.OU] = "3B4YCYTQPH"',
                     "#{appdir}/kogiQA.app",
                   ],
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Application Support/kogiQA",
  ]
  end

end
