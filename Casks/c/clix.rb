cask "clix" do
  version "2.4.0.0"
  sha256 :no_check

  url "https://rixstep.com/4/0/clix//clix.zip"
  name "CLIX"
  homepage "https://rixstep.com/4/0/clix/"

  disable! date: "2024-08-05", because: :no_longer_available

  app "CLIX/CLIX.app"

  preflight do
    set_permissions "#{staged_path}/CLIX/CLIX.app", "0755"
  end

  postflight do
    set_permissions "#{appdir}/CLIX/CLIX.app", "0700"
  end

  caveats do
    requires_rosetta
  end
end
