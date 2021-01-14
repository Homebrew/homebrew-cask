cask "nuclei" do
  version "2.2.0"
  sha256 "fc5610fe45482fe372c29393f172e489672c65b0d5739e633dbee2f8450f6290"

  url "https://github.com/projectdiscovery/nuclei/releases/download/v#{version}/nuclei_#{version}_macOS_amd64.tar.gz",
      verified: "https://github.com/projectdiscovery/nuclei/"
  appcast "https://github.com/projectdiscovery/nuclei/releases.atom"
  name "Nuclei"
  desc "HTTP/DNS scanner configurable via YAML templates"
  homepage "https://nuclei.projectdiscovery.io/"

  binary "nuclei"

  postflight do
    system_command  "/usr/sbin/spctl",
                    args: ["--add", "--label", "nuclei", "/usr/local/bin/nuclei"],
                    sudo: true

    system_command  "/bin/mkdir",
                    args: ["-p", "/usr/local/share/nuclei/nuclei-templates"]

    system_command "/usr/local/bin/nuclei",
                   args: ["-update-templates", "-update-directory", "/usr/local/share/nuclei/nuclei-templates", ""]
  end

  uninstall_preflight do
    system_command  "/usr/sbin/spctl",
                    args: ["--remove", "--label", "nuclei"],
                    sudo: true
  end

  uninstall delete: [
    "/usr/local/bin/nuclei",
    "/usr/local/share/nuclei",
    "~/.nuclei-config.json",
  ]
end
