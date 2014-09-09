class Parse < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.parse.com/downloads/cloud_code/parse'
  homepage 'https://parse.com'

  binary 'parse'
  container_type :naked

  postflight do
    system "chmod", "755", "#{destination_path}/#{title}"
  end
end
