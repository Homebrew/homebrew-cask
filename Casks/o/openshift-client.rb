cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.12"
  sha256 arm:   "1333fb9191accd9540f42652013ef799f21334431cd1db4659580dc548d13837",
         intel: "66450be2a664ad661682496bb4c139a626447719f4bb927493c45bd6a0470c41"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
