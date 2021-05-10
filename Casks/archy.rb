cask "archy" do
  version "1.3.3"
  sha256 "eba17fc06b5d8067079fa3736afe3971e519c211a6f97da6edc7ea11b040a4e8"

  url "https://sdk-cdn.mypurecloud.com/archy/#{version}/archy-macos.zip"
  name "archy"
  desc "Is a Genesys Cloud Architect YAML processor that lets you create Architect flows from YAML files that you write"
  homepage "https://developer.mypurecloud.com/devapps/archy/"

  binary "archyBin/archy-macos-#{version}", target: "archy"
end
