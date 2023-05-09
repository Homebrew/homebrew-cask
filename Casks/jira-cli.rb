cask "jira-cli" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.0"
  sha256 arm:   "9503d084743d96d45ec7799f40b32895eaf06135051dfc47e835724582f36e83",
         intel: "00dfed65840bc399cdf55e598d0d85d24de0f070be3803c0801b2bb8f7c372a9"

  url "https://github.com/ankitpokhrel/jira-cli/releases/download/v#{version}/jira_#{version}_macOS_#{arch}.tar.gz"
  name "Jira CLI"
  desc "Feature-rich interactive Jira command-line"
  homepage "https://github.com/ankitpokhrel/jira-cli"

  binary "jira_#{version}_macOS_#{arch}/bin/jira"
end
