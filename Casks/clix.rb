cask "clix" do
  version "2.4.0.0"
  sha256 "665f7162a75cf45c7de9c21bf5a1c371beba29080cfd90cfe6cf24aeaf701a7b"

  url "ftp://rixstep.com/CLIX.zip"
  name "CLIX"
  homepage "https://rixstep.com/4/0/clix/"

  app "CLIX/CLIX.app"

  preflight do
    set_permissions "#{staged_path}/CLIX/CLIX.app", "0755"
  end

  postflight do
    set_permissions "#{appdir}/CLIX/CLIX.app", "0700"
  end
end
