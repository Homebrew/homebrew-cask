cask "easyfind" do
  version "5.0.1"
  sha256 "05cf4f3661d73953ce8c30692ad49a5d30d0f6b710212ebbc41bb381a589b713"

  url "https://download.devontechnologies.com/download/freeware/easyfind/#{version}/EasyFind.app.zip"
  name "EasyFind"
  desc "Find files, folders, or contents in any file"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url "https://www.devontechnologies.com/apps/freeware"
    strategy :page_match
    regex(%r{href=.*?/(\d+(?:\.\d+)*)/EasyFind\.app\.zip}i)
  end

  app "EasyFind.app"
end
