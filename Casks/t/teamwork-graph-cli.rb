cask "teamwork-graph-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.4.4"
  sha256 arm:          "a34270ee07ac8a701dbab3f8be669ac640e575fdc85758d5c56846975a7dceec",
         intel:        "c6081730886a4c920377fa17c0e2d674fa50ec6a4b4d379ebfb2ef78c454bebd",
         arm64_linux:  "4dab6d4fbc94e450fc79e661ac48616ba1099b40077dedc550d4d105e1cb83cc",
         x86_64_linux: "36a93b0ad0011d80909cc00508091c34df03dd0bf1644fded67bf94f2c9ffc07"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://teamwork-graph.atlassian.com/cli/twg-#{os}-#{arch}-v#{version}"
  name "Teamwork Graph CLI"
  desc "Command-line interface for Atlassian Teamwork Graph"
  homepage "https://developer.atlassian.com/cloud/twg-cli"

  livecheck do
    url "https://teamwork-graph.atlassian.com/cli/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "twg-#{os}-#{arch}-v#{version}", target: "twg"
  generate_completions_from_executable "twg-#{os}-#{arch}-v#{version}", "completion", "script", base_name: "twg"

  uninstall launchctl: "com.atlassian.twg.upkeep"

  zap trash: [
    "~/.config/twg",
    "~/.twg",
    "~/Library/Caches/twg",
    "~/Library/LaunchAgents/com.atlassian.twg.upkeep.plist",
  ]
end
