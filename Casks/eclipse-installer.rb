cask "eclipse-installer" do
  version "4.18.0,2020-12:R"
  sha256 "43f09d0b45484676ebe4eca88c52ea001f63efd2576ae55f71e0fe91c2fd3cb4"

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name "Eclipse Installer"
  homepage "https://eclipse.org/"

  app "Eclipse Installer.app"

  caveats do
    depends_on_java
  end
end
