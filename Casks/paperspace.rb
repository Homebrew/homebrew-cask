cask "paperspace" do
  version "11.4.1.4095"
  sha256 "c1cc6b0330afe0d264127bf3dca1705c1048ad517d68e3f0e08d85735ef1a850"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  name "Paperspace"
  desc "Desktop app for the Paperspace cloud computing platform"
  homepage "https://www.paperspace.com/app/"

  livecheck do
    # curl -H 'Content-Type: application/json' \
    #   --data-binary \
    #   '{"component": "paperspaceInstaller", "os": "mac"}' \
    #   https://api.paperspace.io/receivers/latestVersion
    skip "No version information available"
  end

  app "Paperspace.app"
end
