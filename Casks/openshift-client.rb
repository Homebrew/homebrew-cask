cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.3"
  sha256 arm:   "75e36ee1e9f6d9d389857ed71a5f75cd876b644056699fde6bd784bbe229443a",
         intel: "1ad1ca9440bfcf97a4759775c5e1ef69612253dcc314310f0d647925235e0602"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
