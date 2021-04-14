cask "kk7ds-python-runtime" do
  version "10"
  sha256 "5cee8acb941e39f93a4df6a99ed29a14c48da0bc5beb3b31068852b1fad8b009"

  url "http://www.d-rats.com/download/OSX_Runtime/KK7DS_Python_Runtime_R#{version}.pkg"
  name "KK7DS Python Runtime"
  homepage "http://www.d-rats.com/download/OSX_Runtime/"

  livecheck do
    url "http://www.d-rats.com/download/OSX_Runtime/"
    strategy :page_match
    regex(%r{href=.*?KK7DS_Python_Runtime_R(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "KK7DS_Python_Runtime_R#{version.major}.pkg"

  uninstall pkgutil: "com.danplanet.python_runtime",
            delete:  "/opt/kk7ds"
end
