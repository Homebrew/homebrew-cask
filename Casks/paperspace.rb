cask "paperspace" do
  version "11.3.0.3468"
  sha256 "3550b55422f03434b1a47d1e94d5352ae78467a9491e42e97ac1d7b15721fcf6"

  url "https://assets.paperspace.com/native-app/prod/darwin/Paperspace-#{version}.dmg"
  name "Paperspace"
  desc "Desktop app for the Paperspace cloud computing platform"
  homepage "https://www.paperspace.com/app/"

  livecheck do
    url "https://www.macupdater.net/cgi-bin/extract_text/send_post_request_data.cgi?url=https://api.paperspace.io/receivers/latestVersion&data={%22component%22:%22paperspaceInstaller%22,%22os%22:%22mac%22}&headers={%22user-agent%22:%22Mozilla%22,%22content-type%22:%22application/json%22}"
    strategy :page_match do |page|
      JSON.parse(page.split("sasd")[0])["version"]
    end
  end

  app "Paperspace.app"
end
